Helper = require('hubot-test-helper')
chai = require 'chai'

chai.should();
chai.use(require('chai-things'));

expect = chai.expect

helper = new Helper('../src/hubot-the-battle.coffee')

describe 'hubot-the-battle', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  # TODO: Test that the response contains a random image
  it 'knowing is half the battle', ->
    @room.user.say('alice', '@hubot knowing is half the battle').then =>
      console.log "\tResponse:"
      console.log @room.messages
      @room.messages.should.include.something.that.deep.equals(['alice', '@hubot knowing is half the battle'])

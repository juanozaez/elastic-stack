package com.home.logsender

import org.junit.jupiter.api.Test

import org.junit.jupiter.api.Assertions.*

internal class LogSenderTest {

    private val sender = LogSender()

    @Test
    fun logSomething() {
        sender.logInfo()
        sender.logError()
    }
}
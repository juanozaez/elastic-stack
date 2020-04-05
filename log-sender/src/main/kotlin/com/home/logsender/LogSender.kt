package com.home.logsender

import org.apache.logging.log4j.LogManager

class LogSender {
    private val logger = LogManager.getLogger(LogSender::class.java)

    fun logInfo() {
        logger.info("Log sent from {} successfully", LogSender::class.simpleName)
    }

    fun logError() {
        logger.error("Log sent from {} with error", LogSender::class.simpleName)
    }
}
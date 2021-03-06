package com.facebook.stetho.inspector.console;

import com.facebook.stetho.common.LogRedirector;
import com.facebook.stetho.inspector.helper.ChromePeerManager;
import com.facebook.stetho.inspector.protocol.module.Console;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/console/CLog.class */
public class CLog {
    private static final String TAG = "CLog";

    public static void writeToConsole(ChromePeerManager chromePeerManager, Console.MessageLevel messageLevel, Console.MessageSource messageSource, String str) {
        LogRedirector.m387d(TAG, str);
        Console.ConsoleMessage consoleMessage = new Console.ConsoleMessage();
        consoleMessage.source = messageSource;
        consoleMessage.level = messageLevel;
        consoleMessage.text = str;
        Console.MessageAddedRequest messageAddedRequest = new Console.MessageAddedRequest();
        messageAddedRequest.message = consoleMessage;
        chromePeerManager.sendNotificationToPeers("Console.messageAdded", messageAddedRequest);
    }

    public static void writeToConsole(Console.MessageLevel messageLevel, Console.MessageSource messageSource, String str) {
        ConsolePeerManager instanceOrNull = ConsolePeerManager.getInstanceOrNull();
        if (instanceOrNull != null) {
            writeToConsole(instanceOrNull, messageLevel, messageSource, str);
        }
    }
}

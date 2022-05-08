package org.apache.commons.cli;
/* loaded from: classes2-dex2jar.jar:org/apache/commons/cli/CommandLineParser.class */
public interface CommandLineParser {
    CommandLine parse(Options options, String[] strArr) throws ParseException;

    CommandLine parse(Options options, String[] strArr, boolean z) throws ParseException;
}

package org.mozilla.javascript.tools.jsc;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import org.mozilla.javascript.CompilerEnvirons;
import org.mozilla.javascript.optimizer.ClassCompiler;
import org.mozilla.javascript.tools.SourceReader;
import org.mozilla.javascript.tools.ToolErrorReporter;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/jsc/Main.class */
public class Main {
    private String characterEncoding;
    private String destinationDir;
    private boolean printHelp;
    private String targetName;
    private String targetPackage;
    private ToolErrorReporter reporter = new ToolErrorReporter(true);
    private CompilerEnvirons compilerEnv = new CompilerEnvirons();
    private ClassCompiler compiler = new ClassCompiler(this.compilerEnv);

    public Main() {
        this.compilerEnv.setErrorReporter(this.reporter);
    }

    private void addError(String str, String str2) {
        addFormatedError(str2 == null ? ToolErrorReporter.getMessage(str) : ToolErrorReporter.getMessage(str, str2));
    }

    private void addFormatedError(String str) {
        this.reporter.error(str, null, -1, null, -1);
    }

    private static void badUsage(String str) {
        System.err.println(ToolErrorReporter.getMessage("msg.jsc.bad.usage", Main.class.getName(), str));
    }

    private File getOutputFile(File file, String str) {
        File file2 = new File(file, str.replace('.', File.separatorChar).concat(".class"));
        String parent = file2.getParent();
        if (parent != null) {
            File file3 = new File(parent);
            if (!file3.exists()) {
                file3.mkdirs();
            }
        }
        return file2;
    }

    public static void main(String[] strArr) {
        Main main = new Main();
        String[] processOptions = main.processOptions(strArr);
        if (processOptions == null) {
            if (main.printHelp) {
                System.out.println(ToolErrorReporter.getMessage("msg.jsc.usage", Main.class.getName()));
                System.exit(0);
            }
            System.exit(1);
        }
        if (!main.reporter.hasReportedError()) {
            main.processSource(processOptions);
        }
    }

    /* renamed from: p */
    private static void m207p(String str) {
        System.out.println(str);
    }

    private String readSource(File file) {
        String absolutePath = file.getAbsolutePath();
        if (!file.isFile()) {
            addError("msg.jsfile.not.found", absolutePath);
            return null;
        }
        try {
            return (String) SourceReader.readFileOrUrl(absolutePath, true, this.characterEncoding);
        } catch (FileNotFoundException e) {
            addError("msg.couldnt.open", absolutePath);
            return null;
        } catch (IOException e2) {
            addFormatedError(e2.toString());
            return null;
        }
    }

    String getClassName(String str) {
        int i = 1;
        char[] cArr = new char[str.length() + 1];
        int i2 = 0;
        if (!Character.isJavaIdentifierStart(str.charAt(0))) {
            cArr[0] = (char) 95;
        } else {
            i = 0;
        }
        while (i2 < str.length()) {
            char charAt = str.charAt(i2);
            if (Character.isJavaIdentifierPart(charAt)) {
                cArr[i] = charAt;
            } else {
                cArr[i] = (char) 95;
            }
            i2++;
            i++;
        }
        return new String(cArr).trim();
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ea, code lost:
        if (r0.equals("-O") != false) goto L_0x00ed;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[] processOptions(java.lang.String[] r7) {
        /*
            Method dump skipped, instructions count: 1064
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.tools.jsc.Main.processOptions(java.lang.String[]):java.lang.String[]");
    }

    public void processSource(String[] strArr) {
        for (int i = 0; i != strArr.length; i++) {
            String str = strArr[i];
            if (!str.endsWith(".js")) {
                addError("msg.extension.not.js", str);
                return;
            }
            File file = new File(str);
            String readSource = readSource(file);
            if (readSource != null) {
                String str2 = this.targetName;
                String str3 = str2;
                if (str2 == null) {
                    String name = file.getName();
                    str3 = getClassName(name.substring(0, name.length() - 3));
                }
                String str4 = str3;
                if (this.targetPackage.length() != 0) {
                    str4 = this.targetPackage + "." + str3;
                }
                Object[] compileToClassFiles = this.compiler.compileToClassFiles(readSource, str, 1, str4);
                if (compileToClassFiles != null && compileToClassFiles.length != 0) {
                    File file2 = null;
                    if (this.destinationDir != null) {
                        file2 = new File(this.destinationDir);
                    } else {
                        String parent = file.getParent();
                        if (parent != null) {
                            file2 = new File(parent);
                        }
                    }
                    for (int i2 = 0; i2 != compileToClassFiles.length; i2 += 2) {
                        String str5 = (String) compileToClassFiles[i2];
                        byte[] bArr = (byte[]) compileToClassFiles[i2 + 1];
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(getOutputFile(file2, str5));
                            fileOutputStream.write(bArr);
                            fileOutputStream.close();
                        } catch (IOException e) {
                            addFormatedError(e.toString());
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }
}

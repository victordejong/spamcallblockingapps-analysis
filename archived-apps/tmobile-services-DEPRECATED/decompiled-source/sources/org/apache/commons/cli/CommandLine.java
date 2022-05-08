package org.apache.commons.cli;

import java.io.PrintStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Properties;
/* loaded from: classes2-dex2jar.jar:org/apache/commons/cli/CommandLine.class */
public class CommandLine implements Serializable {
    private static final long serialVersionUID = 1;
    private List args = new LinkedList();
    private List options = new ArrayList();

    private Option resolveOption(String str) {
        String stripLeadingHyphens = Util.stripLeadingHyphens(str);
        for (Option option : this.options) {
            if (stripLeadingHyphens.equals(option.getOpt())) {
                return option;
            }
            if (stripLeadingHyphens.equals(option.getLongOpt())) {
                return option;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addArg(String str) {
        this.args.add(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addOption(Option option) {
        this.options.add(option);
    }

    public List getArgList() {
        return this.args;
    }

    public String[] getArgs() {
        String[] strArr = new String[this.args.size()];
        this.args.toArray(strArr);
        return strArr;
    }

    public Object getOptionObject(char c) {
        return getOptionObject(String.valueOf(c));
    }

    public Object getOptionObject(String str) {
        try {
            return getParsedOptionValue(str);
        } catch (ParseException e) {
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Exception found converting ");
            stringBuffer.append(str);
            stringBuffer.append(" to desired type: ");
            stringBuffer.append(e.getMessage());
            printStream.println(stringBuffer.toString());
            return null;
        }
    }

    public Properties getOptionProperties(String str) {
        Properties properties = new Properties();
        for (Option option : this.options) {
            if (str.equals(option.getOpt()) || str.equals(option.getLongOpt())) {
                List valuesList = option.getValuesList();
                if (valuesList.size() >= 2) {
                    properties.put(valuesList.get(0), valuesList.get(1));
                } else if (valuesList.size() == 1) {
                    properties.put(valuesList.get(0), "true");
                }
            }
        }
        return properties;
    }

    public String getOptionValue(char c) {
        return getOptionValue(String.valueOf(c));
    }

    public String getOptionValue(char c, String str) {
        return getOptionValue(String.valueOf(c), str);
    }

    public String getOptionValue(String str) {
        String[] optionValues = getOptionValues(str);
        return optionValues == null ? null : optionValues[0];
    }

    public String getOptionValue(String str, String str2) {
        String optionValue = getOptionValue(str);
        if (optionValue != null) {
            str2 = optionValue;
        }
        return str2;
    }

    public String[] getOptionValues(char c) {
        return getOptionValues(String.valueOf(c));
    }

    public String[] getOptionValues(String str) {
        ArrayList arrayList = new ArrayList();
        for (Option option : this.options) {
            if (str.equals(option.getOpt()) || str.equals(option.getLongOpt())) {
                arrayList.addAll(option.getValuesList());
            }
        }
        return arrayList.isEmpty() ? null : (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public Option[] getOptions() {
        List list = this.options;
        return (Option[]) list.toArray(new Option[list.size()]);
    }

    public Object getParsedOptionValue(String str) throws ParseException {
        String optionValue = getOptionValue(str);
        Option resolveOption = resolveOption(str);
        Object obj = null;
        if (resolveOption == null) {
            return null;
        }
        Object type = resolveOption.getType();
        if (optionValue != null) {
            obj = TypeHandler.createValue(optionValue, type);
        }
        return obj;
    }

    public boolean hasOption(char c) {
        return hasOption(String.valueOf(c));
    }

    public boolean hasOption(String str) {
        return this.options.contains(resolveOption(str));
    }

    public Iterator iterator() {
        return this.options.iterator();
    }
}

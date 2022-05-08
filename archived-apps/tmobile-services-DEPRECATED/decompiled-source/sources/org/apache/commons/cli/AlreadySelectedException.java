package org.apache.commons.cli;
/* loaded from: classes2-dex2jar.jar:org/apache/commons/cli/AlreadySelectedException.class */
public class AlreadySelectedException extends ParseException {
    private OptionGroup group;
    private Option option;

    public AlreadySelectedException(String str) {
        super(str);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AlreadySelectedException(org.apache.commons.cli.OptionGroup r4, org.apache.commons.cli.Option r5) {
        /*
            r3 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "The option '"
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r6
            r1 = r5
            java.lang.String r1 = r1.getKey()
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = "' was specified but an option from this group "
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = "has already been selected: '"
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.getSelected()
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = "'"
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r3
            r1 = r6
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            r0.group = r1
            r0 = r3
            r1 = r5
            r0.option = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.cli.AlreadySelectedException.<init>(org.apache.commons.cli.OptionGroup, org.apache.commons.cli.Option):void");
    }

    public Option getOption() {
        return this.option;
    }

    public OptionGroup getOptionGroup() {
        return this.group;
    }
}

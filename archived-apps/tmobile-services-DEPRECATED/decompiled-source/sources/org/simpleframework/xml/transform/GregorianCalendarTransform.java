package org.simpleframework.xml.transform;

import java.util.Date;
import java.util.GregorianCalendar;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/GregorianCalendarTransform.class */
class GregorianCalendarTransform implements Transform<GregorianCalendar> {
    private final DateTransform transform;

    public GregorianCalendarTransform() throws Exception {
        this(Date.class);
    }

    public GregorianCalendarTransform(Class cls) throws Exception {
        this.transform = new DateTransform(cls);
    }

    private GregorianCalendar read(Date date) throws Exception {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        if (date != null) {
            gregorianCalendar.setTime(date);
        }
        return gregorianCalendar;
    }

    @Override // org.simpleframework.xml.transform.Transform
    public GregorianCalendar read(String str) throws Exception {
        return read(this.transform.read(str));
    }

    public String write(GregorianCalendar gregorianCalendar) throws Exception {
        return this.transform.write((DateTransform) gregorianCalendar.getTime());
    }
}

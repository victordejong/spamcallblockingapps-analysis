package org.mozilla.javascript.tools.debugger;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Polygon;
import java.awt.Rectangle;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import javax.swing.JPanel;
import javax.swing.text.BadLocationException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/FileHeader.class */
public class FileHeader extends JPanel implements MouseListener {
    private static final long serialVersionUID = -2858905404778259127L;
    private FileWindow fileWindow;
    private int pressLine = -1;

    public FileHeader(FileWindow fileWindow) {
        this.fileWindow = fileWindow;
        addMouseListener(this);
        update();
    }

    public void mouseClicked(MouseEvent mouseEvent) {
    }

    public void mouseEntered(MouseEvent mouseEvent) {
    }

    public void mouseExited(MouseEvent mouseEvent) {
    }

    public void mousePressed(MouseEvent mouseEvent) {
        this.pressLine = mouseEvent.getY() / getFontMetrics(this.fileWindow.textArea.getFont()).getHeight();
    }

    public void mouseReleased(MouseEvent mouseEvent) {
        if (mouseEvent.getComponent() == this && (mouseEvent.getModifiers() & 16) != 0) {
            int y = mouseEvent.getY() / getFontMetrics(this.fileWindow.textArea.getFont()).getHeight();
            if (y == this.pressLine) {
                this.fileWindow.toggleBreakPoint(y + 1);
            } else {
                this.pressLine = -1;
            }
        }
    }

    public void paint(Graphics graphics) {
        FileHeader.super.paint(graphics);
        FileTextArea fileTextArea = this.fileWindow.textArea;
        Font font = fileTextArea.getFont();
        graphics.setFont(font);
        FontMetrics fontMetrics = getFontMetrics(font);
        Rectangle clipBounds = graphics.getClipBounds();
        graphics.setColor(getBackground());
        graphics.fillRect(clipBounds.x, clipBounds.y, clipBounds.width, clipBounds.height);
        int maxAscent = fontMetrics.getMaxAscent();
        int height = fontMetrics.getHeight();
        int lineCount = fileTextArea.getLineCount() + 1;
        Integer.toString(lineCount).length();
        int i = clipBounds.y / height;
        int i2 = ((clipBounds.y + clipBounds.height) / height) + 1;
        int width = getWidth();
        int i3 = i2;
        int i4 = i;
        if (i2 > lineCount) {
            i3 = lineCount;
            i4 = i;
        }
        while (i4 < i3) {
            int i5 = -2;
            try {
                i5 = fileTextArea.getLineStartOffset(i4);
            } catch (BadLocationException e) {
            }
            int i6 = i4 + 1;
            boolean isBreakPoint = this.fileWindow.isBreakPoint(i6);
            String str = Integer.toString(i6) + " ";
            int i7 = i4 * height;
            graphics.setColor(Color.blue);
            int i8 = i7 + maxAscent;
            graphics.drawString(str, 0, i8);
            int i9 = width - maxAscent;
            if (isBreakPoint) {
                graphics.setColor(new Color(128, 0, 0));
                int i10 = i8 - 9;
                graphics.fillOval(i9, i10, 9, 9);
                graphics.drawOval(i9, i10, 8, 8);
                graphics.drawOval(i9, i10, 9, 9);
            }
            if (i5 == this.fileWindow.currentPos) {
                Polygon polygon = new Polygon();
                int i11 = i7 + (maxAscent - 10);
                int i12 = i11 + 3;
                polygon.addPoint(i9, i12);
                int i13 = i9 + 5;
                polygon.addPoint(i13, i12);
                int i14 = i11;
                int i15 = i13;
                while (i15 <= i9 + 10) {
                    polygon.addPoint(i15, i14);
                    i15++;
                    i14++;
                }
                int i16 = i9 + 9;
                while (i16 >= i13) {
                    polygon.addPoint(i16, i14);
                    i16--;
                    i14++;
                }
                int i17 = i11 + 7;
                polygon.addPoint(i13, i17);
                polygon.addPoint(i9, i17);
                graphics.setColor(Color.yellow);
                graphics.fillPolygon(polygon);
                graphics.setColor(Color.black);
                graphics.drawPolygon(polygon);
            }
            i4 = i6;
        }
    }

    public void update() {
        FileTextArea fileTextArea = this.fileWindow.textArea;
        Font font = fileTextArea.getFont();
        setFont(font);
        FontMetrics fontMetrics = getFontMetrics(font);
        int height = fontMetrics.getHeight();
        int lineCount = fileTextArea.getLineCount() + 1;
        String num = Integer.toString(lineCount);
        String str = num;
        if (num.length() < 2) {
            str = "99";
        }
        Dimension dimension = new Dimension();
        dimension.width = fontMetrics.stringWidth(str) + 16;
        dimension.height = (lineCount * height) + 100;
        setPreferredSize(dimension);
        setSize(dimension);
    }
}

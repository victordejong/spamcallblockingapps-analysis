package org.mozilla.javascript.tools.debugger;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.swing.JCheckBoxMenuItem;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.KeyStroke;
import javax.swing.SwingUtilities;
import javax.swing.UIManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/Menubar.class */
public class Menubar extends JMenuBar implements ActionListener {
    private static final long serialVersionUID = 3217170497245911461L;
    private JCheckBoxMenuItem breakOnEnter;
    private JCheckBoxMenuItem breakOnExceptions;
    private JCheckBoxMenuItem breakOnReturn;
    private SwingGui debugGui;
    private List<JMenuItem> interruptOnlyItems = Collections.synchronizedList(new ArrayList());
    private List<JMenuItem> runOnlyItems = Collections.synchronizedList(new ArrayList());
    private JMenu windowMenu = new JMenu("Window");

    /* JADX INFO: Access modifiers changed from: package-private */
    public Menubar(SwingGui swingGui) {
        this.debugGui = swingGui;
        String[] strArr = {"Open...", "Run...", "", "Exit"};
        int[] iArr = {79, 78, 0, 81};
        String[] strArr2 = {"Cut", "Copy", "Paste", "Go to function..."};
        String[] strArr3 = {"Break", "Go", "Step Into", "Step Over", "Step Out"};
        char[] cArr = {'B', 'G', 'I', 'O', 'T'};
        String[] strArr4 = {"Metal", "Windows", "Motif"};
        int[] iArr2 = {19, 116, 122, 118, 119, 0, 0};
        JMenu jMenu = new JMenu("File");
        jMenu.setMnemonic('F');
        JMenu jMenu2 = new JMenu("Edit");
        jMenu2.setMnemonic('E');
        JMenu jMenu3 = new JMenu("Platform");
        jMenu3.setMnemonic('P');
        JMenu jMenu4 = new JMenu("Debug");
        jMenu4.setMnemonic('D');
        this.windowMenu.setMnemonic('W');
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].length() == 0) {
                jMenu.addSeparator();
            } else {
                JMenuItem jMenuItem = new JMenuItem(strArr[i], new char[]{'0', 'N', 0, 'X'}[i]);
                jMenuItem.setActionCommand(new String[]{"Open", "Load", "", "Exit"}[i]);
                jMenuItem.addActionListener(this);
                jMenu.add(jMenuItem);
                if (iArr[i] != 0) {
                    jMenuItem.setAccelerator(KeyStroke.getKeyStroke(iArr[i], 2));
                }
            }
        }
        for (int i2 = 0; i2 < strArr2.length; i2++) {
            JMenuItem jMenuItem2 = new JMenuItem(strArr2[i2], new char[]{'T', 'C', 'P', 'F'}[i2]);
            jMenuItem2.addActionListener(this);
            jMenu2.add(jMenuItem2);
        }
        for (int i3 = 0; i3 < strArr4.length; i3++) {
            JMenuItem jMenuItem3 = new JMenuItem(strArr4[i3], new char[]{'M', 'W', 'F'}[i3]);
            jMenuItem3.addActionListener(this);
            jMenu3.add(jMenuItem3);
        }
        for (int i4 = 0; i4 < strArr3.length; i4++) {
            JMenuItem jMenuItem4 = new JMenuItem(strArr3[i4], cArr[i4]);
            jMenuItem4.addActionListener(this);
            if (iArr2[i4] != 0) {
                jMenuItem4.setAccelerator(KeyStroke.getKeyStroke(iArr2[i4], 0));
            }
            if (i4 != 0) {
                this.interruptOnlyItems.add(jMenuItem4);
            } else {
                this.runOnlyItems.add(jMenuItem4);
            }
            jMenu4.add(jMenuItem4);
        }
        this.breakOnExceptions = new JCheckBoxMenuItem("Break on Exceptions");
        this.breakOnExceptions.setMnemonic('X');
        this.breakOnExceptions.addActionListener(this);
        this.breakOnExceptions.setSelected(false);
        jMenu4.add(this.breakOnExceptions);
        this.breakOnEnter = new JCheckBoxMenuItem("Break on Function Enter");
        this.breakOnEnter.setMnemonic('E');
        this.breakOnEnter.addActionListener(this);
        this.breakOnEnter.setSelected(false);
        jMenu4.add(this.breakOnEnter);
        this.breakOnReturn = new JCheckBoxMenuItem("Break on Function Return");
        this.breakOnReturn.setMnemonic('R');
        this.breakOnReturn.addActionListener(this);
        this.breakOnReturn.setSelected(false);
        jMenu4.add(this.breakOnReturn);
        add(jMenu);
        add(jMenu2);
        add(jMenu4);
        JMenu jMenu5 = this.windowMenu;
        JMenuItem jMenuItem5 = new JMenuItem("Cascade", 65);
        jMenu5.add(jMenuItem5);
        jMenuItem5.addActionListener(this);
        JMenu jMenu6 = this.windowMenu;
        JMenuItem jMenuItem6 = new JMenuItem("Tile", 84);
        jMenu6.add(jMenuItem6);
        jMenuItem6.addActionListener(this);
        this.windowMenu.addSeparator();
        JMenu jMenu7 = this.windowMenu;
        JMenuItem jMenuItem7 = new JMenuItem("Console", 67);
        jMenu7.add(jMenuItem7);
        jMenuItem7.addActionListener(this);
        add(this.windowMenu);
        updateEnabled(false);
    }

    public void actionPerformed(ActionEvent actionEvent) {
        String str;
        String actionCommand = actionEvent.getActionCommand();
        if (actionCommand.equals("Metal")) {
            str = "javax.swing.plaf.metal.MetalLookAndFeel";
        } else if (actionCommand.equals("Windows")) {
            str = "com.sun.java.swing.plaf.windows.WindowsLookAndFeel";
        } else if (actionCommand.equals("Motif")) {
            str = "com.sun.java.swing.plaf.motif.MotifLookAndFeel";
        } else {
            Object source = actionEvent.getSource();
            if (source == this.breakOnExceptions) {
                this.debugGui.dim.setBreakOnExceptions(this.breakOnExceptions.isSelected());
                return;
            } else if (source == this.breakOnEnter) {
                this.debugGui.dim.setBreakOnEnter(this.breakOnEnter.isSelected());
                return;
            } else if (source == this.breakOnReturn) {
                this.debugGui.dim.setBreakOnReturn(this.breakOnReturn.isSelected());
                return;
            } else {
                this.debugGui.actionPerformed(actionEvent);
                return;
            }
        }
        try {
            UIManager.setLookAndFeel(str);
            SwingUtilities.updateComponentTreeUI(this.debugGui);
            SwingUtilities.updateComponentTreeUI(this.debugGui.dlg);
        } catch (Exception e) {
        }
    }

    public void addFile(String str) {
        int i;
        int itemCount = this.windowMenu.getItemCount();
        int i2 = itemCount;
        if (itemCount == 4) {
            this.windowMenu.addSeparator();
            i2 = itemCount + 1;
        }
        JMenuItem item = this.windowMenu.getItem(i2 - 1);
        boolean z = false;
        if (item == null || !item.getText().equals("More Windows...")) {
            i = 5;
        } else {
            z = true;
            i = 6;
        }
        if (!z && i2 - 4 == 5) {
            JMenu jMenu = this.windowMenu;
            JMenuItem jMenuItem = new JMenuItem("More Windows...", 77);
            jMenu.add(jMenuItem);
            jMenuItem.setActionCommand("More Windows...");
            jMenuItem.addActionListener(this);
        } else if (i2 - 4 <= i) {
            int i3 = i2;
            if (z) {
                i3 = i2 - 1;
                this.windowMenu.remove(item);
            }
            String shortName = SwingGui.getShortName(str);
            JMenu jMenu2 = this.windowMenu;
            StringBuilder sb = new StringBuilder();
            int i4 = (i3 - 4) + 48;
            sb.append((char) i4);
            sb.append(" ");
            sb.append(shortName);
            JMenuItem jMenuItem2 = new JMenuItem(sb.toString(), i4);
            jMenu2.add(jMenuItem2);
            if (z) {
                this.windowMenu.add(item);
            }
            jMenuItem2.setActionCommand(str);
            jMenuItem2.addActionListener(this);
        }
    }

    public JCheckBoxMenuItem getBreakOnEnter() {
        return this.breakOnEnter;
    }

    public JCheckBoxMenuItem getBreakOnExceptions() {
        return this.breakOnExceptions;
    }

    public JCheckBoxMenuItem getBreakOnReturn() {
        return this.breakOnReturn;
    }

    public JMenu getDebugMenu() {
        return getMenu(2);
    }

    public void updateEnabled(boolean z) {
        for (int i = 0; i != this.interruptOnlyItems.size(); i++) {
            this.interruptOnlyItems.get(i).setEnabled(z);
        }
        for (int i2 = 0; i2 != this.runOnlyItems.size(); i2++) {
            this.runOnlyItems.get(i2).setEnabled(!z);
        }
    }
}

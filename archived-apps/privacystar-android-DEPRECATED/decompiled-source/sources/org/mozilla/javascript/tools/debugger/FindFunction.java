package org.mozilla.javascript.tools.debugger;

import android.support.p004v7.widget.helper.ItemTouchHelper;
import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.Arrays;
import javax.swing.BorderFactory;
import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.DefaultListModel;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import org.mozilla.javascript.tools.debugger.Dim;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/FindFunction.class */
public class FindFunction extends JDialog implements ActionListener {
    private static final long serialVersionUID = 559491015232880916L;
    private SwingGui debugGui;
    private String value;
    private JButton cancelButton = new JButton("Cancel");
    private JButton setButton = new JButton("Select");
    private JList list = new JList(new DefaultListModel());

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/FindFunction$MouseHandler.class */
    class MouseHandler extends MouseAdapter {
        MouseHandler() {
        }

        public void mouseClicked(MouseEvent mouseEvent) {
            if (mouseEvent.getClickCount() == 2) {
                FindFunction.this.setButton.doClick();
            }
        }
    }

    public FindFunction(SwingGui swingGui, String str, String str2) {
        super(swingGui, str, true);
        this.debugGui = swingGui;
        this.cancelButton.addActionListener(this);
        this.setButton.addActionListener(this);
        getRootPane().setDefaultButton(this.setButton);
        DefaultListModel model = this.list.getModel();
        model.clear();
        String[] functionNames = swingGui.dim.functionNames();
        Arrays.sort(functionNames);
        for (String str3 : functionNames) {
            model.addElement(str3);
        }
        this.list.setSelectedIndex(0);
        this.setButton.setEnabled(functionNames.length > 0);
        this.list.setSelectionMode(1);
        this.list.addMouseListener(new MouseHandler());
        JScrollPane jScrollPane = new JScrollPane(this.list);
        jScrollPane.setPreferredSize(new Dimension(320, 240));
        jScrollPane.setMinimumSize(new Dimension((int) ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 80));
        jScrollPane.setAlignmentX(0.0f);
        JPanel jPanel = new JPanel();
        jPanel.setLayout(new BoxLayout(jPanel, 1));
        JLabel jLabel = new JLabel(str2);
        jLabel.setLabelFor(this.list);
        jPanel.add(jLabel);
        jPanel.add(Box.createRigidArea(new Dimension(0, 5)));
        jPanel.add(jScrollPane);
        jPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        JPanel jPanel2 = new JPanel();
        jPanel2.setLayout(new BoxLayout(jPanel2, 0));
        jPanel2.setBorder(BorderFactory.createEmptyBorder(0, 10, 10, 10));
        jPanel2.add(Box.createHorizontalGlue());
        jPanel2.add(this.cancelButton);
        jPanel2.add(Box.createRigidArea(new Dimension(10, 0)));
        jPanel2.add(this.setButton);
        Container contentPane = getContentPane();
        contentPane.add(jPanel, "Center");
        contentPane.add(jPanel2, "South");
        pack();
        addKeyListener(new KeyAdapter() { // from class: org.mozilla.javascript.tools.debugger.FindFunction.1
            public void keyPressed(KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() == 27) {
                    keyEvent.consume();
                    FindFunction.this.value = null;
                    FindFunction.this.setVisible(false);
                }
            }
        });
    }

    public void actionPerformed(ActionEvent actionEvent) {
        String actionCommand = actionEvent.getActionCommand();
        if (actionCommand.equals("Cancel")) {
            setVisible(false);
            this.value = null;
        } else if (actionCommand.equals("Select") && this.list.getSelectedIndex() >= 0) {
            try {
                this.value = (String) this.list.getSelectedValue();
                setVisible(false);
                Dim.FunctionSource functionSourceByName = this.debugGui.dim.functionSourceByName(this.value);
                if (functionSourceByName != null) {
                    this.debugGui.showFileWindow(functionSourceByName.sourceInfo().url(), functionSourceByName.firstLine());
                }
            } catch (ArrayIndexOutOfBoundsException e) {
            }
        }
    }

    public String showDialog(Component component) {
        this.value = null;
        setLocationRelativeTo(component);
        setVisible(true);
        return this.value;
    }
}

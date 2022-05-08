package zendesk.commonui;

import android.annotation.SuppressLint;
import android.arch.lifecycle.Observer;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p004v7.app.AppCompatActivity;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.Toolbar;
import android.view.View;
import android.widget.FrameLayout;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/ConversationView.class */
public class ConversationView extends FrameLayout {
    private static final int UPDATE_TIME_WINDOW = 150;
    private final AvatarContainer avatarContainer;
    private final CellListAdapter cellListAdapter;
    private final AlmostRealProgressBar progressBar;
    private final Toolbar toolbar;
    private Runnable updateRunnable = null;
    private final InputBox inputBox = (InputBox) findViewById(C2633R.C2636id.zui_input_box);

    public ConversationView(@NonNull final AppCompatActivity appCompatActivity, @NonNull ConversationViewModel conversationViewModel) {
        super(appCompatActivity);
        appCompatActivity.getTheme().applyStyle(C2633R.C2638style.ZendeskActivityDefaultTheme, true);
        inflate(appCompatActivity, C2633R.C2637layout.zui_view_conversation, this);
        setId(C2633R.C2636id.zui_conversation_view);
        View findViewById = findViewById(C2633R.C2636id.zui_navbar);
        final RecyclerView recyclerView = (RecyclerView) findViewById(C2633R.C2636id.zui_recycler_cell);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(appCompatActivity);
        this.toolbar = (Toolbar) findViewById.findViewById(C2633R.C2636id.zui_toolbar);
        this.avatarContainer = (AvatarContainer) findViewById.findViewById(C2633R.C2636id.zui_avatar_container);
        this.progressBar = (AlmostRealProgressBar) findViewById.findViewById(C2633R.C2636id.zui_progressBar);
        this.cellListAdapter = new CellListAdapter(appCompatActivity);
        this.toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: zendesk.commonui.ConversationView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                appCompatActivity.finish();
            }
        });
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(this.cellListAdapter);
        new RecyclerViewScroller(recyclerView, linearLayoutManager).install(this.inputBox);
        conversationViewModel.getLiveConversationState().observe(appCompatActivity, new Observer<ConversationState>() { // from class: zendesk.commonui.ConversationView.2
            public void onChanged(@Nullable final ConversationState conversationState) {
                recyclerView.removeCallbacks(ConversationView.this.updateRunnable);
                ConversationView.this.updateRunnable = new Runnable() { // from class: zendesk.commonui.ConversationView.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ConversationView.this.renderState(conversationState);
                    }
                };
                recyclerView.postDelayed(ConversationView.this.updateRunnable, 150L);
            }
        });
        this.inputBox.setInputTextWatcher(conversationViewModel.getTextWatcher());
        this.inputBox.setInputTextConsumer(conversationViewModel.getInputTextConsumer());
    }

    void renderState(@Nullable ConversationState conversationState) {
        if (conversationState != null) {
            this.toolbar.setTitle(conversationState.title);
            this.toolbar.setSubtitle(conversationState.subtitle);
            this.avatarContainer.showAvatars(conversationState.avatarStates);
            this.cellListAdapter.submitList(conversationState.cells);
            if (conversationState.progressBarVisible) {
                this.progressBar.start(AlmostRealProgressBar.DONT_STOP_MOVING);
            } else {
                this.progressBar.stop(300L);
            }
            this.inputBox.setEnabled(conversationState.enabled);
        }
    }
}

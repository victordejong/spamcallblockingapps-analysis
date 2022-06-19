.class public final Le/a/t/a/v/h;
.super Landroidx/viewpager2/widget/ViewPager2$e;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;


# direct methods
.method public constructor <init>(Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/t/a/v/h;->a:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$e;-><init>()V

    return-void
.end method


# virtual methods
.method public g(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/t/a/v/h;->a:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;

    .line 2
    iget-object p1, p1, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;->t:Le/a/t/a/v/d;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.class public final Le/a/t/a/v/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;


# direct methods
.method public constructor <init>(Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/v/g;->a:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/t/a/v/g;->a:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;

    .line 2
    iget-object p1, p1, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;->u:Le/a/t/a/o;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/t/a/o;->b()V

    :cond_0
    return-void
.end method

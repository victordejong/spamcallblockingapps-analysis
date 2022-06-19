.class public final Le/a/t/a/v/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Le/a/t/a/v/a;

.field public final synthetic b:Le/a/t/a/v/a$a;


# direct methods
.method public constructor <init>(Le/a/t/a/v/a;Le/a/t/a/v/a$a;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/v/c;->a:Le/a/t/a/v/a;

    iput-object p2, p0, Le/a/t/a/v/c;->b:Le/a/t/a/v/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/t/a/v/c;->b:Le/a/t/a/v/a$a;

    .line 2
    iget-object v0, p1, Le/a/t/a/v/a$a;->a:Le/a/t/a/u/d;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Le/a/t/a/v/c;->a:Le/a/t/a/v/a;

    .line 4
    iget-object v1, v1, Le/a/t/a/v/a;->b:Le/a/t/a/o;

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, p1, Le/a/t/a/v/a$a;->b:Lcom/truecaller/android/truemoji/keyboard/EmojiView;

    .line 6
    invoke-interface {v1, p1, v0}, Le/a/t/a/o;->c(Lcom/truecaller/android/truemoji/keyboard/EmojiView;Le/a/t/a/u/d;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.class public final Le/a/t/a/v/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/v/i;->a(Lcom/truecaller/android/truemoji/keyboard/EmojiView;Le/a/t/a/u/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/u/d;

.field public final synthetic b:Le/a/t/a/v/i;


# direct methods
.method public constructor <init>(Le/a/t/a/u/d;Le/a/t/a/v/i;Lcom/truecaller/android/truemoji/keyboard/EmojiView;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/v/i$a;->a:Le/a/t/a/u/d;

    iput-object p2, p0, Le/a/t/a/v/i$a;->b:Le/a/t/a/v/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/t/a/v/i$a;->b:Le/a/t/a/v/i;

    .line 2
    iget-object p1, p1, Le/a/t/a/v/i;->b:Le/a/t/a/o;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/t/a/v/i$a;->a:Le/a/t/a/u/d;

    invoke-interface {p1, v0}, Le/a/t/a/o;->d(Le/a/t/a/u/d;)V

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/t/a/v/i$a;->b:Le/a/t/a/v/i;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

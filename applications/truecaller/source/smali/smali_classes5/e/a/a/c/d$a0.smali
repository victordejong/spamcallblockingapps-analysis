.class public final Le/a/a/c/d$a0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/d;->V3(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;Le/a/c/r/j/s;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

.field public final synthetic c:Le/a/a/c/d;

.field public final synthetic d:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic e:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

.field public final synthetic f:Lcom/truecaller/android/truemoji/widget/EmojiTextView;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;Le/a/a/c/d;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;Ljava/lang/Integer;Lcom/truecaller/android/truemoji/widget/EmojiTextView;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/d$a0;->b:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    iput-object p2, p0, Le/a/a/c/d$a0;->c:Le/a/a/c/d;

    iput-object p3, p0, Le/a/a/c/d$a0;->d:Lcom/truecaller/messaging/data/types/Message;

    iput-object p4, p0, Le/a/a/c/d$a0;->e:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    iput-object p7, p0, Le/a/a/c/d$a0;->f:Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/d$a0;->c:Le/a/a/c/d;

    iget-object v1, p0, Le/a/a/c/d$a0;->b:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    .line 4
    invoke-virtual {v0, v1}, Le/a/a/c/d;->v5(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;)V

    .line 5
    iget-object v0, p0, Le/a/a/c/d$a0;->c:Le/a/a/c/d;

    iget-object v1, p0, Le/a/a/c/d$a0;->e:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    iget-object v2, p0, Le/a/a/c/d$a0;->d:Lcom/truecaller/messaging/data/types/Message;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v1, p1, v2, v3}, Le/a/a/c/d;->s5(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;Lcom/truecaller/messaging/data/types/Message;Z)V

    .line 7
    iget-object p1, p0, Le/a/a/c/d$a0;->f:Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    check-cast p1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    iget-object v0, p0, Le/a/a/c/d$a0;->d:Lcom/truecaller/messaging/data/types/Message;

    .line 8
    iget-wide v0, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

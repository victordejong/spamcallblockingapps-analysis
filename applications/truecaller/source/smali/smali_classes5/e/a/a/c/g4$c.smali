.class public final Le/a/a/c/g4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/g4;->b1(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/util/List<",
        "+",
        "Ls1/k<",
        "+",
        "Lcom/truecaller/messaging/data/types/BinaryEntity;",
        "+",
        "Le/a/o5/o0;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/g4;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Le/a/a/c/g4;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/g4$c;->a:Le/a/a/c/g4;

    iput-object p2, p0, Le/a/a/c/g4$c;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/a/c/g4$c;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/k;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Le/a/a/c/g4$c;->a:Le/a/a/c/g4;

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/BinaryEntity;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;->GIF:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;->GALLERY:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    .line 8
    :goto_0
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    .line 9
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    .line 10
    invoke-virtual/range {v0 .. v8}, Le/a/a/c/g4;->dc(Lcom/truecaller/messaging/conversation/draft/DraftMode;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZJI)V

    :cond_1
    return-void
.end method

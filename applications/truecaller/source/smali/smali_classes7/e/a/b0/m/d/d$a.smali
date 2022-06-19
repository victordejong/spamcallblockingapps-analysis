.class public final Le/a/b0/m/d/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/m/d/d;-><init>(Landroid/content/Context;Ls1/w/f;Le/a/b0/m/d/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/common/payments/senderinfo/SenderInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b0/m/d/d;


# direct methods
.method public constructor <init>(Le/a/b0/m/d/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/m/d/d$a;->b:Le/a/b0/m/d/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b0/m/d/d$a;->b:Le/a/b0/m/d/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Le/a/b0/m/d/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Le/a/b0/m/d/b;-><init>(Le/a/b0/m/d/d;Ls1/w/d;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0, v2}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

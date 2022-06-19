.class public final Le/a/a/c/g4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/g4;->vi(ZLe/a/o5/d2/a;)V
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
        "Ls1/k<",
        "+",
        "Lcom/truecaller/messaging/data/types/BinaryEntity;",
        "+",
        "Le/a/o5/o0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/g4;

.field public final synthetic b:Lcom/truecaller/messaging/data/types/Draft;


# direct methods
.method public constructor <init>(Le/a/a/c/g4;Lcom/truecaller/messaging/data/types/Draft;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/g4$d;->a:Le/a/a/c/g4;

    iput-object p2, p0, Le/a/a/c/g4$d;->b:Lcom/truecaller/messaging/data/types/Draft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ls1/k;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Le/a/a/c/g4$d;->b:Lcom/truecaller/messaging/data/types/Draft;

    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Draft$b;->f()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Draft$b;->d()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 7
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Draft$b;->a(Ljava/util/Collection;)Lcom/truecaller/messaging/data/types/Draft$b;

    .line 8
    iget-object p1, p0, Le/a/a/c/g4$d;->a:Le/a/a/c/g4;

    .line 9
    invoke-virtual {p1}, Le/a/a/c/g4;->Mj()I

    move-result p1

    .line 10
    iput p1, v0, Lcom/truecaller/messaging/data/types/Draft$b;->o:I

    .line 11
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object p1

    .line 12
    iget-object v0, p0, Le/a/a/c/g4$d;->a:Le/a/a/c/g4;

    .line 13
    invoke-virtual {v0}, Le/a/a/c/g4;->Lj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/truecaller/messaging/data/types/Draft;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    const-string v0, "draft.buildUpon()\n      \u2026N, getAnalyticsContext())"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Le/a/a/c/g4$d;->a:Le/a/a/c/g4;

    .line 16
    iget-object v0, v0, Le/a/a/c/g4;->J:Le/a/a/k/t;

    .line 17
    iget-object v1, p0, Le/a/a/c/g4$d;->b:Lcom/truecaller/messaging/data/types/Draft;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2, v2}, Le/a/a/k/t;->b(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;ZZ)Le/a/r2/x;

    move-result-object p1

    iget-object v0, p0, Le/a/a/c/g4$d;->a:Le/a/a/c/g4;

    .line 18
    iget-object v0, v0, Le/a/a/c/g4;->D:Le/a/r2/l;

    .line 19
    invoke-interface {v0}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v0

    new-instance v1, Le/a/a/c/i4;

    invoke-direct {v1, p0}, Le/a/a/c/i4;-><init>(Le/a/a/c/g4$d;)V

    invoke-virtual {p1, v0, v1}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_0
    return-void
.end method

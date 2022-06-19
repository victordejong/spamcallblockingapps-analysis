.class public final Le/a/d/v/k/s0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/s0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Lcom/truecaller/voip/util/VoipTone;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/v/k/s0$a;


# direct methods
.method public constructor <init>(Le/a/d/v/k/s0$a;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/s0$a$a;->a:Le/a/d/v/k/s0$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/voip/util/VoipTone;

    .line 2
    iget-object v0, p0, Le/a/d/v/k/s0$a$a;->a:Le/a/d/v/k/s0$a;

    iget-object v0, v0, Le/a/d/v/k/s0$a;->f:Le/a/d/v/k/s0;

    .line 3
    iget-object v0, v0, Le/a/d/v/k/s0;->a:Le/a/d/c0/o;

    .line 4
    invoke-interface {v0, p1, p2}, Le/a/d/c0/o;->c(Lcom/truecaller/voip/util/VoipTone;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

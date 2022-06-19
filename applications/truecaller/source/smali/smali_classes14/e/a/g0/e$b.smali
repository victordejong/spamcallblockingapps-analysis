.class public final Le/a/g0/e$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g0/e;->m(Ljava/lang/String;Le/a/d4/e;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/g0/l/d;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g0/e;


# direct methods
.method public constructor <init>(Le/a/g0/e;)V
    .locals 0

    iput-object p1, p0, Le/a/g0/e$b;->b:Le/a/g0/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Le/a/g0/l/d;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2
    iget-object v2, p0, Le/a/g0/e$b;->b:Le/a/g0/e;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v2, p1, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;

    invoke-virtual {p1}, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->getReason()Ljava/lang/String;

    move-result-object p1

    const-string v2, "error"

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    :cond_1
    move v0, v1

    .line 5
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

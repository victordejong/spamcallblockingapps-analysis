.class public final Le/a/v2/f$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v2/f;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Lx3/a0<",
        "Lcom/truecaller/attestation/data/AttestationNonceDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v2/f;


# direct methods
.method public constructor <init>(Le/a/v2/f;)V
    .locals 0

    iput-object p1, p0, Le/a/v2/f$a;->b:Le/a/v2/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 2
    :try_start_0
    iget-object p1, p0, Le/a/v2/f$a;->b:Le/a/v2/f;

    iget-object v0, p1, Le/a/v2/f;->f:Le/a/v2/e;

    .line 3
    iget-object v0, v0, Le/a/v2/e;->g:Le/a/v2/w/a;

    .line 4
    iget-object p1, p1, Le/a/v2/f;->g:Lcom/truecaller/attestation/AttestationEngine;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Le/a/v2/w/b;

    :try_start_1
    invoke-virtual {v0, p1}, Le/a/v2/w/b;->a(Lcom/truecaller/attestation/AttestationEngine;)Lx3/a0;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

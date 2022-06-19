.class public final Le/a/v2/e$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v2/e;-><init>(Le/a/p5/c;Le/a/p5/q0/e;Le/a/v2/a;Le/a/v2/v/a;Le/a/v2/m;Le/a/v2/w/a;Le/a/v2/i;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/attestation/AttestationEngine;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v2/e;


# direct methods
.method public constructor <init>(Le/a/v2/e;)V
    .locals 0

    iput-object p1, p0, Le/a/v2/e$a;->b:Le/a/v2/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v2/e$a;->b:Le/a/v2/e;

    .line 2
    iget-object v0, v0, Le/a/v2/e;->d:Le/a/v2/a;

    .line 3
    invoke-interface {v0}, Le/a/v2/a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

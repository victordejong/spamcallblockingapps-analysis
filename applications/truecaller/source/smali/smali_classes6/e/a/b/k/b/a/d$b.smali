.class public Le/a/b/k/b/a/d$b;
.super Ln3/c0/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/k/b/a/d;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Le/a/b/k/b/a/d;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/c0;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM district"

    return-object v0
.end method

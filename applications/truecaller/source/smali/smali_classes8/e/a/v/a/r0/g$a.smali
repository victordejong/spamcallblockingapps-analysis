.class public final Le/a/v/a/r0/g$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/r0/g;-><init>(Le/a/i5/d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/v/a/r0/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v/a/r0/g;


# direct methods
.method public constructor <init>(Le/a/v/a/r0/g;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/r0/g$a;->b:Le/a/v/a/r0/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/a/v/a/r0/i;

    iget-object v1, p0, Le/a/v/a/r0/g$a;->b:Le/a/v/a/r0/g;

    .line 2
    iget v1, v1, Le/a/v/a/r0/g;->c:I

    .line 3
    invoke-direct {v0, v1}, Le/a/v/a/r0/i;-><init>(I)V

    return-object v0
.end method

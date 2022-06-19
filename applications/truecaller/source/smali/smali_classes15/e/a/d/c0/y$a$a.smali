.class public final Le/a/d/c0/y$a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/y$a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "[",
        "Le/a/d/b0/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c0/y$a;


# direct methods
.method public constructor <init>(Le/a/d/c0/y$a;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/y$a$a;->b:Le/a/d/c0/y$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/y$a$a;->b:Le/a/d/c0/y$a;

    iget-object v0, v0, Le/a/d/c0/y$a;->a:[Lq3/a/x2/f;

    array-length v0, v0

    new-array v0, v0, [Le/a/d/b0/a;

    return-object v0
.end method

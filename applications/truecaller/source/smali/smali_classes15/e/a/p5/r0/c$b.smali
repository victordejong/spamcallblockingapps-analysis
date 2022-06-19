.class public final Le/a/p5/r0/c$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p5/r0/c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/p5/r0/c;


# direct methods
.method public constructor <init>(Le/a/p5/r0/c;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/r0/c$b;->b:Le/a/p5/r0/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/p5/r0/c$b;->b:Le/a/p5/r0/c;

    iget-object v0, v0, Le/a/p5/r0/c;->g:Le/a/p5/r0/b;

    invoke-virtual {v0}, Le/a/p5/r0/b;->i()V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

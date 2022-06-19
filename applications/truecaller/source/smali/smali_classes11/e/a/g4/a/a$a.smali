.class public final Le/a/g4/a/a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g4/a/a;-><init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Le/a/u3/g;Le/a/p5/g;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/b0/a/a0/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g4/a/a;

.field public final synthetic c:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/g4/a/a;Ls1/w/f;)V
    .locals 0

    iput-object p1, p0, Le/a/g4/a/a$a;->b:Le/a/g4/a/a;

    iput-object p2, p0, Le/a/g4/a/a$a;->c:Ls1/w/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Le/a/b0/a/a0/a;

    iget-object v1, p0, Le/a/g4/a/a$a;->b:Le/a/g4/a/a;

    .line 2
    invoke-virtual {v1}, Le/a/g4/a/a;->d()Landroid/content/Context;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/g4/a/a$a;->c:Ls1/w/f;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Le/a/b0/a/a0/a;-><init>(Landroid/content/Context;Ls1/w/f;II)V

    return-object v0
.end method

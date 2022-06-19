.class public final Le/i/b/e3$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/e3;-><init>(Le/i/b/e2;Le/i/b/s1/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/i/b/e3;


# direct methods
.method public constructor <init>(Le/i/b/e3;)V
    .locals 0

    iput-object p1, p0, Le/i/b/e3$a;->b:Le/i/b/e3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/e3$a;->b:Le/i/b/e3;

    .line 2
    iget-object v0, v0, Le/i/b/e3;->d:Le/i/b/s1/d;

    .line 3
    invoke-virtual {v0}, Le/i/b/s1/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

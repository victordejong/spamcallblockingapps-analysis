.class public final Le/a/c/a/m/c/z$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/z;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/m/c/z;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/z;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/z$b;->b:Le/a/c/a/m/c/z;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "query"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/a/m/c/z$b;->b:Le/a/c/a/m/c/z;

    .line 4
    sget-object v1, Le/a/c/a/m/c/z;->f:[Ls1/a/l;

    .line 5
    invoke-virtual {v0}, Le/a/c/a/m/c/z;->PA()Le/a/c/a/m/b/o;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Le/a/c/a/m/b/o;->c(Ljava/lang/String;)V

    .line 7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

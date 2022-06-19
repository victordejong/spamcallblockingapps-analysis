.class public final Lu3/p0/e/e$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/p0/e/e;->s()Lv3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/io/IOException;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lu3/p0/e/e;


# direct methods
.method public constructor <init>(Lu3/p0/e/e;)V
    .locals 0

    iput-object p1, p0, Lu3/p0/e/e$e;->b:Lu3/p0/e/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/io/IOException;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lu3/p0/e/e$e;->b:Lu3/p0/e/e;

    .line 4
    sget-object v0, Lu3/p0/c;->a:[B

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lu3/p0/e/e;->i:Z

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

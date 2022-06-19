.class public final Le/a/n/m1$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/m1;->e(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/io/OutputStream;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/InputStream;

.field public final synthetic c:Ls1/w/d;


# direct methods
.method public constructor <init>(Le/a/n/p1;Ljava/io/InputStream;Le/a/n/m1;Ls1/w/d;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p2, p0, Le/a/n/m1$b;->b:Ljava/io/InputStream;

    iput-object p4, p0, Le/a/n/m1$b;->c:Ls1/w/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/io/OutputStream;

    const-string v0, "out"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/n/m1$b;->b:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Le/q/f/a/d/a;->U(Ljava/io/InputStream;Ljava/io/OutputStream;II)J

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

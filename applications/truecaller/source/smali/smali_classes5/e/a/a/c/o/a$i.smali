.class public final Le/a/a/c/o/a$i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/o/a;->q6(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/net/Uri;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/o/a;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Le/a/a/c/o/a;I)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/o/a$i;->b:Le/a/a/c/o/a;

    iput p2, p0, Le/a/a/c/o/a$i;->c:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/net/Uri;

    const-string v0, "uri"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/o/a$i;->b:Le/a/a/c/o/a;

    iget v1, p0, Le/a/a/c/o/a$i;->c:I

    .line 4
    sget-object v2, Le/a/a/c/o/a;->e:[Ls1/a/l;

    .line 5
    invoke-virtual {v0, p1, v1}, Le/a/a/c/o/a;->QA(Landroid/net/Uri;I)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

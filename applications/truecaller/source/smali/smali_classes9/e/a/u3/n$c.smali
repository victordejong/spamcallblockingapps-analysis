.class public final Le/a/u3/n$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/u3/n;-><init>(Le/a/u3/a;Le/a/u3/d;Le/a/s4/a;Ljavax/inject/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/u3/b;",
        "Le/a/u3/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/u3/n;

.field public final synthetic c:Le/a/s4/a;


# direct methods
.method public constructor <init>(Le/a/u3/n;Le/a/s4/a;)V
    .locals 0

    iput-object p1, p0, Le/a/u3/n$c;->b:Le/a/u3/n;

    iput-object p2, p0, Le/a/u3/n$c;->c:Le/a/s4/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/u3/b;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/u3/l;

    iget-object v1, p0, Le/a/u3/n$c;->b:Le/a/u3/n;

    .line 4
    iget-object v1, v1, Le/a/u3/n;->q6:Le/a/u3/d;

    .line 5
    invoke-direct {v0, p1, v1}, Le/a/u3/l;-><init>(Le/a/u3/b;Le/a/u3/d;)V

    return-object v0
.end method

.class public final Le/a/u3/n$b;
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
        "Le/a/u3/j;",
        "Le/a/u3/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/u3/b;

.field public final synthetic c:Le/a/u3/n;

.field public final synthetic d:Le/a/s4/a;


# direct methods
.method public constructor <init>(Le/a/u3/b;Le/a/u3/n;Le/a/s4/a;)V
    .locals 0

    iput-object p1, p0, Le/a/u3/n$b;->b:Le/a/u3/b;

    iput-object p2, p0, Le/a/u3/n$b;->c:Le/a/u3/n;

    iput-object p3, p0, Le/a/u3/n$b;->d:Le/a/s4/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Le/a/u3/j;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Le/a/u3/j;

    .line 4
    new-instance v2, Le/a/u3/o;

    invoke-direct {v2, p0}, Le/a/u3/o;-><init>(Le/a/u3/n$b;)V

    .line 5
    iget-object v3, p0, Le/a/u3/n$b;->d:Le/a/s4/a;

    .line 6
    iget-object v0, p0, Le/a/u3/n$b;->b:Le/a/u3/b;

    check-cast v0, Le/a/u3/j;

    .line 7
    iget-object v4, v0, Le/a/u3/j;->c:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Le/a/u3/n$b;->c:Le/a/u3/n;

    .line 9
    iget-object v5, v1, Le/a/u3/n;->q6:Le/a/u3/d;

    .line 10
    iget-object v6, v0, Le/a/u3/j;->e:Lcom/truecaller/featuretoggles/FirebaseFlavor;

    move-object v1, p1

    .line 11
    invoke-direct/range {v1 .. v6}, Le/a/u3/j;-><init>(Le/a/u3/b;Le/a/s4/a;Ljava/lang/String;Le/a/u3/d;Lcom/truecaller/featuretoggles/FirebaseFlavor;)V

    return-object p1
.end method

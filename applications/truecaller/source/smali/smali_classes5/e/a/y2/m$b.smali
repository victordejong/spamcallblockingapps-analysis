.class public final Le/a/y2/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/u/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y2/m;->b(Le/a/y2/g;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/u/v<",
        "Le/a/y2/k;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Le/a/y2/m$b;->a:Ljava/lang/Iterable;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/y2/k;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/y2/k;

    .line 2
    invoke-virtual {p1}, Le/a/y2/k;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Le/a/y2/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/y2/m$b;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

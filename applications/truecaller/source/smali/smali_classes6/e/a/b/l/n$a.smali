.class public final Le/a/b/l/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/l/n;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/c/a/c/a<",
        "TT;",
        "Le/a/b/l/q<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Le/a/b/l/q<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/b/l/q$c;

    invoke-direct {v0, p1}, Le/a/b/l/q$c;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

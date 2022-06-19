.class public final Ls1/a/a/a/v0/j/y/n$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/j/y/n;->g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/a;",
        "Ls1/a/a/a/v0/b/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/j/y/n$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/j/y/n$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/j/y/n$b;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/j/y/n$b;->b:Ls1/a/a/a/v0/j/y/n$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/a;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

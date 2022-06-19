.class public final Ls1/a/a/a/v0/i/c$h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/i/i;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/i/c$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/i/c$h;

    invoke-direct {v0}, Ls1/a/a/a/v0/i/c$h;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/i/c$h;->b:Ls1/a/a/a/v0/i/c$h;

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
    check-cast p1, Ls1/a/a/a/v0/i/i;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Ls1/a/a/a/v0/i/q;->b:Ls1/a/a/a/v0/i/q;

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/i/i;->m(Ls1/a/a/a/v0/i/q;)V

    .line 4
    sget-object v0, Ls1/a/a/a/v0/i/h;->q:Ljava/util/Set;

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/i/i;->f(Ljava/util/Set;)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

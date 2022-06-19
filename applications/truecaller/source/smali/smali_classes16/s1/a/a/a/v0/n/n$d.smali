.class public final Ls1/a/a/a/v0/n/n$d;
.super Ls1/a/a/a/v0/n/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/n/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/n/n$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/n/n$d;

    invoke-direct {v0}, Ls1/a/a/a/v0/n/n$d;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/n/n$d;->b:Ls1/a/a/a/v0/n/n$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "must have a single value parameter"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Ls1/a/a/a/v0/n/n;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public b(Ls1/a/a/a/v0/b/v;)Z
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public final Ls1/a/a/a/v0/o/g$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/o/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Object;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/o/g$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/o/g$c;

    invoke-direct {v0}, Ls1/a/a/a/v0/o/g$c;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/o/g$c;->b:Ls1/a/a/a/v0/o/g$c;

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
    .locals 0

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

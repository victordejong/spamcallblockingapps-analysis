.class public final Lq3/b/i/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lq3/b/i/a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lq3/b/i/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/b/i/g;

    invoke-direct {v0}, Lq3/b/i/g;-><init>()V

    sput-object v0, Lq3/b/i/g;->b:Lq3/b/i/g;

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

    check-cast p1, Lq3/b/i/a;

    const-string v0, "$receiver"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

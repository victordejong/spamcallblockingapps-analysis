.class public final Ls1/a/a/a/v0/m/i$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/m/i;-><init>(Ls1/a/a/a/v0/l/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/a/a/a/v0/m/i$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/m/i$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/m/i$d;

    invoke-direct {v0}, Ls1/a/a/a/v0/m/i$d;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/m/i$d;->b:Ls1/a/a/a/v0/m/i$d;

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
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    new-instance p1, Ls1/a/a/a/v0/m/i$b;

    sget-object v0, Ls1/a/a/a/v0/m/x;->c:Ls1/a/a/a/v0/m/l0;

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ls1/a/a/a/v0/m/i$b;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

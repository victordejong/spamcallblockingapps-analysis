.class final Lg/g/b/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/b;->l(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final f:Lg/g/b/a/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/g/b/a/b$b;

    invoke-direct {v0}, Lg/g/b/a/b$b;-><init>()V

    sput-object v0, Lg/g/b/a/b$b;->f:Lg/g/b/a/b$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lg/g/b/c/a;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/a;

    invoke-virtual {p0, p1}, Lg/g/b/a/b$b;->a(Lg/g/b/c/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class final Lg/g/a/a/h/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/a/a/h/b;->k()Li/c/b0/b/v;
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
.field public static final f:Lg/g/a/a/h/b$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/g/a/a/h/b$e;

    invoke-direct {v0}, Lg/g/a/a/h/b$e;-><init>()V

    sput-object v0, Lg/g/a/a/h/b$e;->f:Lg/g/a/a/h/b$e;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lg/g/a/a/i/o/h;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/o/l;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lg/g/a/a/i/o/l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lg/g/a/a/h/b$e;->a(Ljava/lang/String;)Lg/g/a/a/i/o/h;

    move-result-object p1

    return-object p1
.end method

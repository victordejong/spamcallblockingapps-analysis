.class public final Ls1/a/a/a/v0/d/a/d0/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/d0/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/d0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/d/a/d0/m$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/m$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/d0/m$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/d0/m$a;->a:Ls1/a/a/a/v0/d/a/d0/m$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/d/a/f0/w;)Ls1/a/a/a/v0/b/w0;
    .locals 1

    const-string v0, "javaTypeParameter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

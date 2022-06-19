.class public final Ls1/a/a/a/v0/m/h$a$c;
.super Ls1/a/a/a/v0/m/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/m/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/m/h$a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/h$a$c;

    invoke-direct {v0}, Ls1/a/a/a/v0/m/h$a$c;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/m/h$a$c;->a:Ls1/a/a/a/v0/m/h$a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ls1/a/a/a/v0/m/h$a;-><init>(Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should not be called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

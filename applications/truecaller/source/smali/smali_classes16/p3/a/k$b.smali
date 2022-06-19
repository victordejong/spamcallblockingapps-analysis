.class public final Lp3/a/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lp3/a/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/k$b;

    invoke-direct {v0}, Lp3/a/k$b;-><init>()V

    sput-object v0, Lp3/a/k$b;->a:Lp3/a/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "identity"

    return-object v0
.end method

.method public b(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    return-object p1
.end method

.method public c(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    return-object p1
.end method

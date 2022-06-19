.class final Lg/g/b/a/b$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/b;->H(Lg/g/b/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lg/g/b/a/b$k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/g/b/a/b$k;

    invoke-direct {v0}, Lg/g/b/a/b$k;-><init>()V

    sput-object v0, Lg/g/b/a/b$k;->f:Lg/g/b/a/b$k;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-static {}, Lg/g/b/a/c;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in setSpec"

    invoke-static {v0, p1, v2, v1}, Lcom/hiya/client/support/logging/d;->k(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lg/g/b/a/b$k;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.class final Lg/g/b/a/b$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/b;->H(Lg/g/b/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final f:Lg/g/b/a/b$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/g/b/a/b$j;

    invoke-direct {v0}, Lg/g/b/a/b$j;-><init>()V

    sput-object v0, Lg/g/b/a/b$j;->f:Lg/g/b/a/b$j;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    invoke-static {}, Lg/g/b/a/c;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "setSpec completed"

    invoke-static {v0, v2, v1}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

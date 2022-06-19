.class public final Lq3/b/l/i;
.super Lq3/b/l/k;
.source "SourceFile"


# static fields
.field public static final a:Lq3/b/l/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq3/b/l/i;

    invoke-direct {v0}, Lq3/b/l/i;-><init>()V

    sput-object v0, Lq3/b/l/i;->a:Lq3/b/l/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq3/b/l/k;-><init>(Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method

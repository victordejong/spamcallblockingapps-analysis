.class public final synthetic Le/a/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# static fields
.field public static final synthetic a:Le/a/p0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/p0;

    invoke-direct {v0}, Le/a/p0;-><init>()V

    sput-object v0, Le/a/p0;->a:Le/a/p0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/truecaller/TrueApp;->r:Z

    invoke-static {}, Le/a/b0/k/h;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

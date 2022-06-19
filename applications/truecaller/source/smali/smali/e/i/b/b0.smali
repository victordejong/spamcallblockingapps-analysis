.class public final synthetic Le/i/b/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x2$a;


# static fields
.field public static final synthetic a:Le/i/b/b0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/i/b/b0;

    invoke-direct {v0}, Le/i/b/b0;-><init>()V

    sput-object v0, Le/i/b/b0;->a:Le/i/b/b0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/i/b/r1/w;

    new-instance v1, Le/i/b/r1/v;

    invoke-direct {v1}, Le/i/b/r1/v;-><init>()V

    invoke-direct {v0, v1}, Le/i/b/r1/w;-><init>(Le/i/b/r1/v;)V

    return-object v0
.end method

.class public final synthetic Le/a/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# static fields
.field public static final synthetic a:Le/a/r0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/r0;

    invoke-direct {v0}, Le/a/r0;-><init>()V

    sput-object v0, Le/a/r0;->a:Le/a/r0;

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

    sget-object v0, Le/a/b0/k/h;->b:Ljava/util/Locale;

    return-object v0
.end method

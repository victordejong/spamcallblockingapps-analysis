.class public final Le/m/f/a/l$a;
.super Le/m/f/a/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/f/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/f/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/m/f/a/l;
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/f/a/l;->M:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Le/m/f/a/l;
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/f/a/l;->O:Ljava/lang/String;

    return-object p0
.end method

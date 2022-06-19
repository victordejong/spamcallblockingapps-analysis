.class public final synthetic Le/m/d/n/j/o/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/e;


# static fields
.field public static final synthetic a:Le/m/d/n/j/o/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/n/j/o/a;

    invoke-direct {v0}, Le/m/d/n/j/o/a;-><init>()V

    sput-object v0, Le/m/d/n/j/o/a;->a:Le/m/d/n/j/o/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Le/m/d/n/j/l/a0;

    .line 1
    sget-object v0, Le/m/d/n/j/o/c;->b:Le/m/d/n/j/l/d0/g;

    invoke-virtual {v0, p1}, Le/m/d/n/j/l/d0/g;->f(Le/m/d/n/j/l/a0;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

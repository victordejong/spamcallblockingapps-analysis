.class public interface abstract Le/m/a/c/h1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/m/a/c/h1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/m/a/c/h1/g$a;

    invoke-direct {v0}, Le/m/a/c/h1/g$a;-><init>()V

    sput-object v0, Le/m/a/c/h1/g;->a:Le/m/a/c/h1/g;

    return-void
.end method


# virtual methods
.method public abstract a()Le/m/a/c/h1/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/h1/h$c;
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Le/m/a/c/h1/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/h1/h$c;
        }
    .end annotation
.end method

.class public interface abstract Le/f/a/n/p/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/f/a/n/p/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/f/a/n/p/j$a;

    invoke-direct {v0}, Le/f/a/n/p/j$a;-><init>()V

    .line 2
    new-instance v1, Le/f/a/n/p/j;

    iget-object v0, v0, Le/f/a/n/p/j$a;->a:Ljava/util/Map;

    invoke-direct {v1, v0}, Le/f/a/n/p/j;-><init>(Ljava/util/Map;)V

    .line 3
    sput-object v1, Le/f/a/n/p/h;->a:Le/f/a/n/p/h;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

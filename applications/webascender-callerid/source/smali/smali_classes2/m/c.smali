.class public interface abstract Lm/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lm/b;

    invoke-direct {v0}, Lm/b;-><init>()V

    sput-object v0, Lm/c;->a:Lm/c;

    .line 2
    new-instance v0, Lm/k0/c/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lm/k0/c/b;-><init>(Lm/t;ILkotlin/w/c/g;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lm/i0;Lm/g0;)Lm/e0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

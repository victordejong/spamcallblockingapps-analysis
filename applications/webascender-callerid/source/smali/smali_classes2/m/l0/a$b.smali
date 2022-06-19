.class public interface abstract Lm/l0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/l0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lm/l0/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm/l0/b$a;

    invoke-direct {v0}, Lm/l0/b$a;-><init>()V

    sput-object v0, Lm/l0/a$b;->a:Lm/l0/a$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method
